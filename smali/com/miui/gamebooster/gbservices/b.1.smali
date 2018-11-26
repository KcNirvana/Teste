.class public Lcom/miui/gamebooster/gbservices/b;
.super Lcom/miui/gamebooster/gbservices/d;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private oC:Landroid/media/AudioManager;

.field private oD:Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

.field private oE:Ljava/lang/Runnable;

.field private oF:Landroid/content/ServiceConnection;

.field private oG:Z

.field private oH:Z

.field private oI:I

.field private oJ:Lcom/miui/gamebooster/service/d;

.field private oK:Z

.field private oL:Z

.field private oM:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/d;-><init>()V

    new-instance v0, Lcom/miui/gamebooster/gbservices/r;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/r;-><init>(Lcom/miui/gamebooster/gbservices/b;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->oE:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/gamebooster/gbservices/s;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/s;-><init>(Lcom/miui/gamebooster/gbservices/b;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/miui/gamebooster/gbservices/t;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/t;-><init>(Lcom/miui/gamebooster/gbservices/b;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->oF:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/b;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/gbservices/b;->oJ:Lcom/miui/gamebooster/service/d;

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->oC:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic rA(Lcom/miui/gamebooster/gbservices/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/b;->oH:Z

    return p1
.end method

.method static synthetic rB(Lcom/miui/gamebooster/gbservices/b;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/gbservices/b;->oI:I

    return p1
.end method

.method static synthetic rC(Lcom/miui/gamebooster/gbservices/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/b;->rr()Z

    move-result v0

    return v0
.end method

.method static synthetic rD(Lcom/miui/gamebooster/gbservices/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/b;->rp()V

    return-void
.end method

.method static synthetic rE(Lcom/miui/gamebooster/gbservices/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gbservices/b;->rs(Z)V

    return-void
.end method

.method private rp()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mHandsFree...stop "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/b;->oG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/b;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iput-boolean v2, p0, Lcom/miui/gamebooster/gbservices/b;->oG:Z

    :cond_0
    return-void
.end method

.method private rq(J)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->oJ:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/b;->oE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private rr()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/b;->oC:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private rs(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/b;->oM:Z

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/b;->oC:Landroid/media/AudioManager;

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/b;->oM:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x64

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method static synthetic rt(Lcom/miui/gamebooster/gbservices/b;)Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->oD:Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

    return-object v0
.end method

.method static synthetic ru(Lcom/miui/gamebooster/gbservices/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic rv(Lcom/miui/gamebooster/gbservices/b;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->oF:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic rw(Lcom/miui/gamebooster/gbservices/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/b;->oH:Z

    return v0
.end method

.method static synthetic rx(Lcom/miui/gamebooster/gbservices/b;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gbservices/b;->oI:I

    return v0
.end method

.method static synthetic ry(Lcom/miui/gamebooster/gbservices/b;)Lcom/miui/gamebooster/service/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->oJ:Lcom/miui/gamebooster/service/d;

    return-object v0
.end method

.method static synthetic rz(Lcom/miui/gamebooster/gbservices/b;Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;)Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/b;->oD:Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_handsfree"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/b;->oL:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_3

    :cond_0
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/gbservices/b;->rq(J)V

    :goto_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/b;->oK:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/b;->oM:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/miui/gamebooster/gbservices/b;->rs(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->oJ:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/gbservices/u;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/gbservices/u;-><init>(Lcom/miui/gamebooster/gbservices/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/gbservices/b;->rq(J)V

    goto :goto_0
.end method

.method public open()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/b;->oL:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mHandsFree...start "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->oJ:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/b;->oE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_handsfree"

    const/4 v2, -0x2

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eR()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/b;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/b;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/b;->oF:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/b;->oK:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/miui/gamebooster/gbservices/b;->oG:Z

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/b;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/b;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method

.method public rd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public re()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tG(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/b;->oL:Z

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tH(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/b;->oK:Z

    return-void
.end method

.method public rf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/b;->oL:Z

    return-void
.end method
