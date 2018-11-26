.class final Lcom/miui/firstaidkit/a/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic tN:Lcom/miui/firstaidkit/a/f;

.field final synthetic val$absModel:Lcom/miui/securityscan/model/AbsModel;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/a/f;Lcom/miui/securityscan/model/AbsModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/a/j;->tN:Lcom/miui/firstaidkit/a/f;

    iput-object p2, p0, Lcom/miui/firstaidkit/a/j;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/a/j;->tN:Lcom/miui/firstaidkit/a/f;

    invoke-static {v0}, Lcom/miui/firstaidkit/a/f;->vn(Lcom/miui/firstaidkit/a/f;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/firstaidkit/a/j;->tN:Lcom/miui/firstaidkit/a/f;

    invoke-static {v0}, Lcom/miui/firstaidkit/a/f;->vn(Lcom/miui/firstaidkit/a/f;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitActivity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/firstaidkit/a/j;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v1, v0}, Lcom/miui/securityscan/model/AbsModel;->optimize(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/a/j;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->KE(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
