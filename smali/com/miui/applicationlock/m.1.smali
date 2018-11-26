.class Lcom/miui/applicationlock/m;
.super Lcom/google/android/exoplayer2/Player$DefaultEventListener;
.source ""


# instance fields
.field final synthetic ahC:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method private constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/m;->ahC:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Player$DefaultEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/miui/applicationlock/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/m;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(ZI)V
    .locals 2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/m;->ahC:Lcom/miui/applicationlock/ConfirmAccessControl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anC(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z

    :cond_0
    return-void
.end method
