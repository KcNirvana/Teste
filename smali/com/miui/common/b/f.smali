.class public Lcom/miui/common/b/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static azO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/miui/common/b/f;->azO:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aHO()I
    .locals 1

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public static final aHP()I
    .locals 1

    sget v0, Lcom/miui/common/b/f;->azO:I

    return v0
.end method

.method public static final aHQ(II)I
    .locals 1

    invoke-static {p0, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method public static aHR(I)I
    .locals 1

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static aHS()Landroid/os/UserHandle;
    .locals 1

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    return-object v0
.end method

.method public static aHT()Landroid/os/UserHandle;
    .locals 1

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    return-object v0
.end method

.method public static aHU()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/common/b/f;->aHO()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static aHV(I)Landroid/os/UserHandle;
    .locals 1

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public static final aHW()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final aHX(I)I
    .locals 1

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static aHY(Landroid/content/Context;I)Z
    .locals 1

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aHZ(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final aIa()Z
    .locals 2

    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aIb(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v3, -0x2710

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "second_user_id"

    invoke-static {v1, v2, v3, v0}, Lcom/miui/common/b/f;->aId(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static aIc()I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public static aId(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static aIe(I)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static aIf()Landroid/os/UserHandle;
    .locals 1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    return-object v0
.end method

.method public static aIg()I
    .locals 1

    const/16 v0, -0x2710

    return v0
.end method

.method public static aIh()Z
    .locals 1

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportSecuritySpace()Z

    move-result v0

    return v0
.end method
