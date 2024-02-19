

<script>
export default {
    props: {
        verifyUrl: {
            type: String,
            default: () => null,
            required: true,
        },
        settingUrl: {
            type: String,
            default: () => null,
            required: true,
        },
    },

    data() {
        return {
            verified: true,
        }
    },
    mounted() {
        this.verifyLicense()
    },

    methods: {
        verifyLicense() {
            axios
                .get(this.verifyUrl).then((res) => {
                    if (res.data.error) {
                        this.verified = false
                    }
                })
                .catch(() => {})
        },
    },
}
</script>
