.class public Lcom/miui/firstaidkit/a/g;
.super Lcom/miui/common/card/models/BaseCardModel;
.source ""


# instance fields
.field private tA:Z

.field private tB:Z

.field private tC:Z

.field private ty:Z

.field private tz:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f03008d

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    return-void
.end method

.method static synthetic vu(Lcom/miui/firstaidkit/a/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/firstaidkit/a/g;->ty:Z

    return v0
.end method

.method static synthetic vv(Lcom/miui/firstaidkit/a/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/firstaidkit/a/g;->tz:Z

    return v0
.end method

.method static synthetic vw(Lcom/miui/firstaidkit/a/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/firstaidkit/a/g;->tA:Z

    return v0
.end method

.method static synthetic vx(Lcom/miui/firstaidkit/a/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/firstaidkit/a/g;->tB:Z

    return v0
.end method

.method static synthetic vy(Lcom/miui/firstaidkit/a/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/firstaidkit/a/g;->tC:Z

    return v0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/firstaidkit/a/h;

    invoke-direct {v0, p1}, Lcom/miui/firstaidkit/a/h;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public vp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/firstaidkit/a/g;->tC:Z

    return-void
.end method

.method public vq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/firstaidkit/a/g;->tz:Z

    return-void
.end method

.method public vr(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/firstaidkit/a/g;->tA:Z

    return-void
.end method

.method public vs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/firstaidkit/a/g;->ty:Z

    return-void
.end method

.method public vt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/firstaidkit/a/g;->tB:Z

    return-void
.end method
