import { Context } from "aws-lambda";
import capitalize from "capitalize";
interface Event {
  name: string;
}

exports.handler = async function (event: Event, context: Context) {
  const msg = `Hello ${capitalize(event.name)}!`
  console.log(msg);
  return {
    body: msg
  }
};

// Uncomment this line to work with lambda locally
// git exports.handler({name: "marcus"})