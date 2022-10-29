import { Context } from "aws-lambda";
import capitalize from "capitalize";
interface Event {
  name: string;
}

exports.handler = async function (event: Event, context: Context) {
  console.log(`Hello ${capitalize(event.name)}!`)
};

// Uncomment this line to work with lambda locally
// exports.handler({name: "marcus"})
