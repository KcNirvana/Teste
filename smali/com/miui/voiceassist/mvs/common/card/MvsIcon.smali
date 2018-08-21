.class public Lcom/miui/voiceassist/mvs/common/card/MvsIcon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/voiceassist/mvs/common/card/JsonAble;


# static fields
.field private static final TAG:Ljava/lang/String; = "MvsIcon"


# instance fields
.field final bmp:Landroid/graphics/Bitmap;

.field final bundleKey:Ljava/lang/String;

.field final pkg:Ljava/lang/String;

.field final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->pkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->bmp:Landroid/graphics/Bitmap;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->bundleKey:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "pkg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->pkg:Ljava/lang/String;

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->url:Ljava/lang/String;

    const-string/jumbo v0, "bundleKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->bundleKey:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->bundleKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->bundleKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_0
    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->bmp:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public appendBundle(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->bundleKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->bundleKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public getBmp()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBundleKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->bundleKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->pkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "pkg"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "url"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->url:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->bundleKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "bundleKey"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->bundleKey:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MvsIcon"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
