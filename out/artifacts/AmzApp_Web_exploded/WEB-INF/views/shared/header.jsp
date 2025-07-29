<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<header>
	<div class="container flex h-16 items-center">
		<div class="mr-4 hidden md:flex"><a href="/" class="mr-6 flex items-center space-x-2"><span
				class="hidden font-bold sm:inline-block">PromptMarket</span></a>
			<nav class="flex items-center space-x-6 text-sm font-medium"><a href="/browse"
			                                                                class="transition-colors hover:text-foreground/80 text-foreground">Browse</a><a
					href="/sell" class="transition-colors hover:text-foreground/80 text-foreground">Sell</a><a
					href="/governance" class="transition-colors hover:text-foreground/80 text-foreground">Governance</a><a
					href="/profile" class="transition-colors hover:text-foreground/80 text-foreground">Profile</a></nav>
		</div>
		<button
				class="ring-offset-background focus-visible:outline-hidden focus-visible:ring-ring inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md font-medium transition-colors disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 hover:text-accent-foreground h-10 py-2 mr-2 px-0 text-base hover:bg-transparent focus-visible:bg-transparent focus-visible:ring-0 focus-visible:ring-offset-0 md:hidden"
				type="button" aria-haspopup="dialog" aria-expanded="false" aria-controls="radix-_r_0_"
				data-state="closed">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
			     stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
			     class="lucide lucide-menu h-6 w-6">
				<line x1="4" x2="20" y1="12" y2="12"></line>
				<line x1="4" x2="20" y1="6" y2="6"></line>
				<line x1="4" x2="20" y1="18" y2="18"></line>
			</svg>
			<span class="sr-only">Toggle Menu</span></button>
		<div class="flex flex-1 items-center justify-between space-x-2 md:justify-end">
			<div class="w-full flex-1 md:w-auto md:flex-none">
				<div class="relative">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
					     stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
					     class="lucide lucide-search absolute left-2 top-2.5 h-4 w-4 text-muted-foreground">
						<circle cx="11" cy="11" r="8"></circle>
						<path d="m21 21-4.3-4.3"></path>
					</svg>
					<input
							class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-foreground placeholder:text-muted-foreground focus-visible:outline-hidden focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50 pl-8 md:w-[300px] lg:w-[400px]"
							placeholder="Search prompts..."></div>
			</div>
			<button
					class="ring-offset-background focus-visible:outline-hidden focus-visible:ring-ring items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium transition-colors focus-visible:ring-2 focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 border-input bg-background hover:bg-accent hover:text-accent-foreground border h-10 px-4 py-2 ml-auto hidden md:flex">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
				     stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
				     class="lucide lucide-wallet mr-2 h-4 w-4">
					<path d="M19 7V4a1 1 0 0 0-1-1H5a2 2 0 0 0 0 4h15a1 1 0 0 1 1 1v4h-3a2 2 0 0 0 0 4h3a1 1 0 0 0 1-1v-2a1 1 0 0 0-1-1"></path>
					<path d="M3 5v14a2 2 0 0 0 2 2h15a1 1 0 0 0 1-1v-4"></path>
				</svg>
				Connect Wallet
			</button>
		</div>
	</div>
</header>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">
			<img src="/assets/img/logo.png" alt="">
		</a>
	</div>
</nav>
</body>
</html>
