<template>
    <div>
        <div v-if="$route.query.tab !== 'new'">
            <h3>我是首页渲染微服务 —— <a href="https://github.com/Hacker-Linner/micro-ssr-home" target="_blank">micro-ssr-home</a></h3>
            <div>
                <img src="https://pic2.zhimg.com/v2-7029d91276e5fb38b003606c0ebbae2b_1440w.jpg?source=172ae18b" width="65%"/>
            </div>
            <div style="display:flex;">
                <div>
                    <p>前端云原生群</p>
                    <img src="https://k8seggjs.hacker-linner.com/public/images/team-qrcode.jpeg" width="200px"/>
                </div>
                <div>
                    <p>公众号</p>
                    <img src="https://k8seggjs.hacker-linner.com/public/images/tea-qrcode.png" width="200px"/>
                </div>
                <div>
                    <p>我的微信</p>
                    <img src="https://k8seggjs.hacker-linner.com/public/images/me-qrcode.jpeg" width="200px"/>
                </div>
            </div>
        </div>
        <p v-else>首页最新内容</p>
    </div>
</template>
<script lang="ts">
import Vue from 'vue';
export default Vue.extend({
    name: 'home'
});
</script>
