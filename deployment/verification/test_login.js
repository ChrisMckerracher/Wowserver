import { Client, Message } from "@timelostprototype/wow-client";

// ToDo: Env var config
const client = new Client(
  "localhost",
  "dummyuser",
  "dummypassword"
);

//console.log(client)
//client.game.on("message", (msg) => {
//  console.log(msg.logLine);
//});

async function bootstrap() {
  //helper function for quick start, may go away
  await client.connectToFirstRealmWithFirstCharacter();
}
bootstrap();