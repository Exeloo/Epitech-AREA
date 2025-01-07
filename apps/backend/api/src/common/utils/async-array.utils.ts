export class AsyncArrayUtils {
  static async some<T>(
    array: T[],
    predicate: (element: T) => boolean | Promise<boolean>,
  ): Promise<boolean> {
    for (const e of array) {
      if (await predicate(e)) return true;
    }
    return false;
  }

  static async forEach<T>(
    array: T[],
    callback: (element: T, index: number, array: T[]) => void | Promise<void>,
  ): Promise<void> {
    for (let i = 0; i < array.length; i++) {
      await callback(array[i], i, array);
    }
  }

  static async map<T, V>(
    array: T[],
    callback: (element: T, index: number, array: V[]) => V | Promise<V>,
  ): Promise<V[]> {
    const result = [];
    await this.forEach(array, async (element: T, index: number) => {
      result.push(await callback(element, index, result));
    });
    return result;
  }
}
