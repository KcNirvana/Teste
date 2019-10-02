.class public abstract Lse/dirac/acs/api/AudioControlService$Connection;
.super Ljava/lang/Object;
.source "AudioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/AudioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Connection"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lse/dirac/acs/api/AudioControlService$Connection$1;

    invoke-direct {v0, p0}, Lse/dirac/acs/api/AudioControlService$Connection$1;-><init>(Lse/dirac/acs/api/AudioControlService$Connection;)V

    iput-object v0, p0, Lse/dirac/acs/api/AudioControlService$Connection;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lse/dirac/acs/api/AudioControlService$Connection;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lse/dirac/acs/api/AudioControlService$Connection;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$002(Lse/dirac/acs/api/AudioControlService$Connection;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService$Connection;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$200(Lse/dirac/acs/api/AudioControlService$Connection;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lse/dirac/acs/api/AudioControlService$Connection;->serviceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method


# virtual methods
.method public abstract onServiceConnected(Lse/dirac/acs/api/AudioControlService;)V
.end method

.method public abstract onServiceDisconnected()V
.end method
