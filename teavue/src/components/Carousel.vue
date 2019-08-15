<template>
  <div>
    <div class="block">
      <el-carousel trigger="click" height="360px">
        <el-carousel-item v-for="(item,i) of items" :key="i">
            <a href="javascript:;">
              <img ref="imgHeight" :src="`http://127.0.0.1:5050/`+item.img" class="banner_img" />
            </a>
        </el-carousel-item>
      </el-carousel>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {

    };
  },
  props:{
    items:{
      type:Array,
      default:function(){
        return [];
      }
    }
  }
}
</script>
<style scoped>
.block {
  width: 1225px;
  margin: 0 auto;
}
</style>