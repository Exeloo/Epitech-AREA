# Area webapp

This webapp is an interface of the Aether app

## Developing

For start the app on watch mode:

```bash
yarn dev
```

If you get a `ENOSPC` error, add this line to the sysctl config (`/etc/sysctl.conf`):
```text
fs.inotify.max_user_watches=524288
```

## Building

To create a production version:

```bash
yarn build
```

You can preview the production build with `yarn preview`.

## Fix linter

This project use prettier linter. For fix your code, use:

```bash
yarn fix
```

