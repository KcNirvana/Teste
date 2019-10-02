.class public Lcom/miui/video/service/update/gpmarket/PUpdateInfoConverter;
.super Lcom/miui/video/base/common/net/converter/base/BaseCustomConverter;
.source "PUpdateInfoConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/base/common/net/converter/base/BaseCustomConverter<",
        "Lcom/miui/video/service/update/entity/UpdateEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final APK_MD5:Ljava/lang/String; = "apk_md5"

.field private static final APK_SIZE:Ljava/lang/String; = "apk_size"

.field private static final APK_URL:Ljava/lang/String; = "apk_url"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final UPDATE_LOG:Ljava/lang/String; = "description"

.field private static final VERSION_CODE:Ljava/lang/String; = "app_ver"

.field private static final VERSION_NAME:Ljava/lang/String; = "app_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/common/net/converter/base/BaseCustomConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Lcom/miui/video/service/update/entity/UpdateEntity;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/service/update/gpmarket/PUpdateInfoConverter;->convert(Ljava/lang/String;)Lcom/miui/video/service/update/entity/UpdateEntity;

    move-result-object p1

    return-object p1
.end method
