class AppletData {
  String? name;
  String? description;
  List<TriggerNode> triggerNodes = [];

  AppletData({
    this.name,
    this.description,
    List<TriggerNode>? triggerNodes,
  }) : triggerNodes = triggerNodes ?? [];

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'triggerNodes': triggerNodes.map((node) => node.toJson()).toList(),
      };

  static AppletData currentApplet = AppletData();

  static void clearApplet() {
    currentApplet = AppletData();
  }

  static void setName(String newName) {
    currentApplet.name = newName;
  }

  static void setDescription(String newDescription) {
    currentApplet.description = newDescription;
  }

  static void addTriggerNode(TriggerNode triggerNode) {
    currentApplet.triggerNodes.add(triggerNode);
  }

  static void clearTriggerNodes() {
    currentApplet.triggerNodes.clear();
  }
}

class TriggerNodeManager {
  static TriggerNode? rootTriggerNode;
  static String? triggerName;
  static List<String> actionNames = [];

  static void setRootTriggerNode(TriggerNode node, String name) {
    rootTriggerNode = node;
    triggerName = name;
  }

  static void addNextTriggerNode(TriggerNode nextNode, String name) {
    if (rootTriggerNode == null) {
      throw Exception("Root TriggerNode is not set!");
    }
    if (name.isEmpty) {
      if (triggerName != null) {
        actionNames.add(triggerName!);
      }
    } else {
      actionNames.add(name);
    }

    TriggerNode? current = rootTriggerNode;
    while (current!.next.isNotEmpty) {
      current = current.next.first;
    }

    current.next.add(nextNode);
  }

  static void reset() {
    rootTriggerNode = null;
  }
}

class TriggerNode {
  int providerId;
  String actionId;
  Map<String, dynamic> input;
  List<TriggerNode> next = [];

  TriggerNode({
    required this.providerId,
    required this.actionId,
    required this.input,
    List<TriggerNode>? next,
  }) : next = next ?? [];

  Map<String, dynamic> toJson() => {
        'providerId': providerId,
        'actionId': actionId,
        'input': input,
        'next': next.map((node) => node.toJson()).toList(),
      };

  static TriggerNode? currentTriggerNode;

  static void setTriggerNode(TriggerNode triggerNode) {
    currentTriggerNode = triggerNode;
  }

  static void addNext(TriggerNode nextNode) {
    if (currentTriggerNode == null) {
      throw Exception("Current TriggerNode is not set!");
    }

    TriggerNode? current = currentTriggerNode;
    while (current!.next.isNotEmpty) {
      current = current.next.first;
    }

    current.next.add(nextNode);
  }

  static void clearTriggerNode() {
    currentTriggerNode = null;
  }
}
