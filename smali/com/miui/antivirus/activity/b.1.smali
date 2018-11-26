.class Lcom/miui/antivirus/activity/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/antivirus/b;


# instance fields
.field private final arY:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/b;->arY:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public ayA(Lcom/miui/antivirus/model/AbsModel$ItemGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/b;->arY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axB(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/c;

    move-result-object v0

    const/16 v1, 0x409

    invoke-virtual {v0, v1, p1}, Lcom/miui/antivirus/activity/c;->aLg(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public ayB()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/activity/b;->arY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axB(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/c;

    move-result-object v0

    const/16 v1, 0x408

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/activity/c;->aLg(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public ayr()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/b;->arY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axC(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ays()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/activity/b;->arY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axB(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/c;

    move-result-object v0

    const/16 v1, 0x40e

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/activity/c;->aLg(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public ayt(Lcom/miui/antivirus/model/b;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/activity/b;->arY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axB(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/c;

    move-result-object v0

    invoke-static {v1, p1, v1, v2}, Lcom/miui/antivirus/b/a;->aAW(ILcom/miui/antivirus/model/b;ZLcom/miui/antivirus/model/WifiModel$WifiItems;)Lcom/miui/antivirus/b/a;

    move-result-object v1

    const/16 v2, 0x40a

    invoke-virtual {v0, v2, v1}, Lcom/miui/antivirus/activity/c;->aLg(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public ayu(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/activity/b;->arY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axB(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v2, p2, p1}, Lcom/miui/antivirus/b/a;->aAW(ILcom/miui/antivirus/model/b;ZLcom/miui/antivirus/model/WifiModel$WifiItems;)Lcom/miui/antivirus/b/a;

    move-result-object v1

    const/16 v2, 0x40a

    invoke-virtual {v0, v2, v1}, Lcom/miui/antivirus/activity/c;->aLg(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public ayv()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/activity/b;->arY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axB(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/c;

    move-result-object v0

    const/16 v1, 0x416

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/activity/c;->aLg(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public ayw()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/activity/b;->arY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axB(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/c;

    move-result-object v1

    const/16 v2, 0x40b

    invoke-virtual {v1, v2, v3}, Lcom/miui/antivirus/activity/c;->aLg(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axJ(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCj()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/antivirus/a/d;->azA(J)V

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axJ(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/a;->aCd(Ljava/lang/Boolean;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/miui/antivirus/a/d;->azE(J)V

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axJ(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCo()I

    move-result v1

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axJ(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/antivirus/a;->aCm()I

    move-result v2

    add-int/2addr v1, v2

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/miui/antivirus/a/d;->azD(J)V

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->aAc(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public ayx()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/activity/b;->arY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axB(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/c;

    move-result-object v0

    const/16 v1, 0x415

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/activity/c;->aLg(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public ayy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/b;->arY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->axO(Lcom/miui/antivirus/activity/MainActivity;I)I

    :cond_0
    return-void
.end method

.method public ayz(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/antivirus/activity/b;->arY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    const-string/jumbo v1, "AntiVirusMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGetVirusTaskId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/miui/antivirus/activity/MainActivity;->axO(Lcom/miui/antivirus/activity/MainActivity;I)I

    :cond_0
    return-void
.end method
