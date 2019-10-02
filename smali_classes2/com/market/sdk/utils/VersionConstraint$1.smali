.class final Lcom/market/sdk/utils/VersionConstraint$1;
.super Lcom/market/sdk/utils/VersionConstraint;
.source "VersionConstraint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/utils/VersionConstraint;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/VersionConstraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$devConstraint:Ljava/lang/String;

.field final synthetic val$stableConstraint:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/utils/VersionConstraint$1;->val$stableConstraint:Ljava/lang/String;

    iput-object p2, p0, Lcom/market/sdk/utils/VersionConstraint$1;->val$devConstraint:Ljava/lang/String;

    invoke-direct {p0}, Lcom/market/sdk/utils/VersionConstraint;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatched()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market/sdk/utils/VersionConstraint$1;->val$stableConstraint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/market/sdk/utils/VersionConstraint$1;->val$stableConstraint:Ljava/lang/String;

    invoke-static {v0}, Lcom/market/sdk/utils/VersionUtils;->isStableVersionLaterThan(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/market/sdk/utils/VersionConstraint$1;->val$devConstraint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/market/sdk/utils/VersionConstraint$1;->val$devConstraint:Ljava/lang/String;

    invoke-static {v0}, Lcom/market/sdk/utils/VersionUtils;->isDevVersionLaterThan(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
