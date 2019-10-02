.class public Lcom/miui/video/base/routers/ugc/UGCFilter;
.super Ljava/lang/Object;
.source "UGCFilter.java"

# interfaces
.implements Lcom/miui/video/framework/uri/CUtils$IAppFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exitApp()V
    .locals 0

    return-void
.end method

.method public getIntentWithUrl(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/video/framework/uri/LinkEntity;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/miui/video/framework/uri/LinkEntity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string p2, "mv"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getScheme()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "gmv"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getScheme()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const-string p2, "Linker"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p4}, Lcom/miui/video/framework/uri/LinkEntity;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/miui/video/base/common/CommonLauncher;->launchLinkerAction(Landroid/content/Context;Lcom/miui/video/framework/uri/LinkEntity;Ljava/util/List;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleURI(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/video/framework/uri/LinkEntity;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/miui/video/framework/uri/LinkEntity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
