.class public Lcom/miui/gamebooster/gbservices/i;
.super Lcom/miui/gamebooster/gbservices/d;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private pG:Lcom/miui/gamebooster/service/d;

.field private pH:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/d;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/i;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/gbservices/i;->pG:Lcom/miui/gamebooster/service/d;

    return-void
.end method

.method private sy(Z)V
    .locals 3

    const-string/jumbo v1, "screen_buttons_state"

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/i;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/i;->pH:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mIsAntiKeyboard...stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/gbservices/i;->sy(Z)V

    :cond_0
    return-void
.end method

.method public open()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/i;->pH:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mIsAntiKeyboard...start "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/gbservices/i;->sy(Z)V

    :cond_0
    return-void
.end method

.method public rd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public re()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tS(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/i;->pH:Z

    return-void
.end method

.method public rf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/i;->pH:Z

    return-void
.end method
