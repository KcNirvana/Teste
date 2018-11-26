.class public Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultGalleryModel;
.super Lcom/miui/securityscan/model/manualitem/DefaultAppModel;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "default_gallery"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultGalleryModel;->setTrackStr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method protected initModel()V
    .locals 2

    const-string/jumbo v0, "com.miui.gallery"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultGalleryModel;->setDefaultPkgName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultGalleryModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070767

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultGalleryModel;->setTypeName(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultGalleryModel;->setIntentFilter(Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    goto :goto_0
.end method
