#!/usr/bin/env node
import { program } from "commander";

program
  .name("omni")
  .description("OmniSocial CLI for protocol interactions")
  .version("0.1.0");

program
  .command("post")
  .description("Create a new post")
  .requiredOption("-u, --user <address>", "User address")
  .requiredOption("-c, --content <string>", "Post content")
  .action((opts) => {
    console.log(`Posting as ${opts.user}: "${opts.content}"`);
    // Simulate tx
  });

program
  .command("follow")
  .description("Follow a user")
  .requiredOption("-f, --from <address>", "Your address")
  .requiredOption("-t, --to <address>", "Target address")
  .action((opts) => {
    console.log(`${opts.from} is now following ${opts.to}`);
    // Simulate tx
  });

program
  .command("tip")
  .description("Send a tip")
  .requiredOption("-f, --from <address>", "Your address")
  .requiredOption("-t, --to <address>", "Target address")
  .requiredOption("-a, --amount <amount>", "Amount in wei")
  .action((opts) => {
    console.log(`Sending tip of ${opts.amount} wei from ${opts.from} to ${opts.to}`);
    // Simulate tx
  });

program.parse(process.argv);
