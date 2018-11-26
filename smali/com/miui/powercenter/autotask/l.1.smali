.class public Lcom/miui/powercenter/autotask/l;
.super Lmiui/preference/PreferenceFragment;
.source ""


# instance fields
.field protected aKH:Lcom/miui/powercenter/autotask/AutoTask;

.field protected aKI:Lcom/miui/powercenter/autotask/AutoTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/l;->aWA(Lcom/miui/powercenter/autotask/AutoTask;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 0

    invoke-direct {p0}, Lmiui/preference/PreferenceFragment;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/l;->aWA(Lcom/miui/powercenter/autotask/AutoTask;)V

    return-void
.end method

.method private aWA(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v0}, Lcom/miui/powercenter/autotask/AutoTask;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/l;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    goto :goto_0
.end method


# virtual methods
.method public aWz()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/l;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/l;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/l;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aXT()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/l;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->aXT()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/l;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/l;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYh(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/l;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/l;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYi(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/l;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aXU()I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/l;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->aXU()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/l;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aXZ()I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/l;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->aXZ()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "task"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTask;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/miui/powercenter/autotask/l;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/l;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/l;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;-><init>(Lcom/miui/powercenter/autotask/AutoTask;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/l;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "task"

    iget-object v1, p0, Lcom/miui/powercenter/autotask/l;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
