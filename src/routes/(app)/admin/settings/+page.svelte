<script>
	import { goto } from '$app/navigation';
	import { onMount } from 'svelte';
	import Settings from '$lib/components/admin/Settings.svelte';
	import { WEBUI_BASE_URL } from '$lib/constants';
	onMount(() => {
		goto(WEBUI_BASE_URL + '/admin/settings/general');
	});
</script>

<Settings />
