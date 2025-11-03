export default {
  defaultBrowser: "Arc",
  handlers: [
    {
      match: ["*helloremind*", "localhost*"],
      browser: "Google Chrome"
    },
    {
      match: (url) => url.hostname.endsWith(".test"),
      browser: "Google Chrome"
    }
  ]
}