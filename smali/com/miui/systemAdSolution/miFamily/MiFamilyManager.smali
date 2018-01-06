.class public Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$MiFamilyInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiFamilyManager"

.field private static volatile sManager:Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private buildIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ad.MI_FAMILY_HELPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.systemAdSolution"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private checkValid(Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$MiFamilyInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$MiFamilyInfo;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$MiFamilyInfo;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$MiFamilyInfo;->mLogoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$MiFamilyInfo;->mBigImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;
    .locals 2

    sget-object v0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->sManager:Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->sManager:Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;

    invoke-direct {v0, p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->sManager:Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->sManager:Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getMiFamilyBigImagePath()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$5;

    iget-object v1, p0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$5;-><init>(Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$5;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getMiFamilyLogoPath()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$3;

    iget-object v1, p0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$3;-><init>(Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$3;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getMiFamilyTitle()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$4;

    iget-object v1, p0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$4;-><init>(Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$4;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getMiFamilyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$2;

    iget-object v1, p0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$2;-><init>(Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$2;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private isSupported()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private showMiFamily()Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$1;

    iget-object v2, p0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    invoke-direct {v0, p0, v2, v3}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$1;-><init>(Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->buildIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$1;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getMiFamilyInfo(Ljava/lang/String;)Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$MiFamilyInfo;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->showMiFamily()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$MiFamilyInfo;

    invoke-direct {v1}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$MiFamilyInfo;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->getMiFamilyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$MiFamilyInfo;->mUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->getMiFamilyTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$MiFamilyInfo;->mTitle:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->getMiFamilyLogoPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$MiFamilyInfo;->mLogoPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->getMiFamilyBigImagePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$MiFamilyInfo;->mBigImagePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->checkValid(Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$MiFamilyInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public trackClick(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$7;

    iget-object v1, p0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$7;-><init>(Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$7;->invokeAsync(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public trackView(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$6;

    iget-object v1, p0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$6;-><init>(Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$6;->invokeAsync(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
