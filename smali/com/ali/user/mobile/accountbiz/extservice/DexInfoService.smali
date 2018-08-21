.class public interface abstract Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService;
.super Ljava/lang/Object;
.source "DexInfoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService$TaobaoBlackBoxInfo;
    }
.end annotation


# static fields
.field public static final ALIPAY_SALT:Ljava/lang/String; = "alipaysalt"


# virtual methods
.method public abstract getDexHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTaobaoBlackBoxInfo()Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService$TaobaoBlackBoxInfo;
.end method
