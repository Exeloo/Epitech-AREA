<script>
    import Input from "$lib/auth/Input.svelte";
    import Checkbox from "$lib/auth/Checkbox.svelte";
    import Submit from "$lib/auth/Submit.svelte";
    import { page } from '$app/stores';

    let email = '';
    let password = '';

    async function handleLogin() {
        const { data, errors } = await GQL_Login({
            data: { email, password }
        });

        if (errors) {
            console.error(errors);
        } else {
            console.log('Token:', data.login.token);
        }
    }
</script>

<Input title="Email" placeholder="Enter your email" dataType="email" />
<Input title="Password" placeholder="Enter your password" dataType="password" />
<div class="flex justify-between w-full">
    <div class="flex items-center mb-4">
        <Checkbox/>
        <label for="remember-checkbox" class="ms-2 text-md font-medium text-neutral-600">Remember me</label>
    </div>
    <a href="/" class="font-bold text-secondary">Forgot password</a>
</div>
<Submit text="Sign in"/>
<p>
    Don't have an account?<a href="/auth/signup/" class="font-semibold pl-2">Sign up</a>
</p>