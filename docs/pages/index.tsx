import Head from "next/head";

export default function Home() {
  return (
    <div className="min-h-screen bg-white dark:bg-zinc-950 text-zinc-900 dark:text-white px-6 py-12">
      <Head>
        <title>OmniSocial Blockchain</title>
        <meta name="description" content="The sovereign social layer of Web3" />
      </Head>
      <main className="max-w-3xl mx-auto space-y-8">
        <h1 className="text-4xl font-bold">OmniSocial</h1>
        <p className="text-lg text-muted-foreground">
          A blockchain where identity, creativity, and reputation converge.
        </p>
        <ul className="space-y-2 list-disc list-inside">
          <li>Zero-gas social interactions</li>
          <li>zkProof-powered rep and personas</li>
          <li>Governance via quests and DAO votes</li>
        </ul>
        <div className="space-x-4 mt-6">
          <a href="/docs" className="px-4 py-2 bg-black text-white rounded hover:bg-zinc-800">Docs</a>
          <a href="https://github.com/YOUR_ORG/omnisocial" className="px-4 py-2 bg-white text-black border rounded hover:bg-gray-100">GitHub</a>
          <a href="/dapp" className="px-4 py-2 bg-indigo-600 text-white rounded hover:bg-indigo-500">Launch dApp</a>
        </div>
      </main>
    </div>
  );
}