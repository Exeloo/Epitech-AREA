<script lang="ts">
    import Input from "$lib/auth/Input.svelte";
    import Checkbox from "$lib/auth/Checkbox.svelte";
    import Submit from "$lib/auth/Submit.svelte";
    import { load_Login } from '$houdini';

    let email = $state('');
    let password = $state('');
    let rememberMe = $state(false);

    async function handleSubmit(event: any): Promise<any> {
        event.preventDefault();

        try {
            console.log(email);
            const query = await load_Login({});
            const { data, errors } = await query.Login.fetch({variables: {data: {email: email, password: password}}});

            if (!data) {
                console.log(errors);
                return errors;
            }

            console.log('Login successful:', query);
            alert('Login successful!');

            if (rememberMe) {
                localStorage.setItem('token', data.login.token);
                localStorage.setItem('refreshToken', data.login.refreshToken);
            } else {
                sessionStorage.setItem('token', data.login.token);
                sessionStorage.setItem('refreshToken', data.login.refreshToken);
            }

            window.location.href = '/';
        } catch (error) {
            console.error('Unexpected error:', error);
        }
    }
</script>

<form onsubmit={handleSubmit} class="w-full flex flex-col gap-2">
    <Input
            bind:value={email}
            title="Email"
            placeholder="Enter your email"
            dataType="email"
    />
    <Input
            bind:value={password}
            title="Password"
            placeholder="Enter your password"
            dataType="password"
    />
    <div class="flex justify-between w-full">
        <div class="flex items-center mb-4">
            <Checkbox bind:value={rememberMe} />
            <label for="remember-checkbox" class="ms-2 text-md font-medium text-neutral-600">
                Remember me
            </label>
        </div>
        <a href="/" class="font-bold text-secondary">Forgot password</a>
    </div>
    <Submit onsubmit={handleSubmit} text="Sign in" />
    <p>
        Don't have an account?<a href="/auth/signup/" class="font-semibold pl-2">Sign up</a>
    </p>
</form>
