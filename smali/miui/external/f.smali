.class final Lmiui/external/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic brg:Lmiui/external/k;


# direct methods
.method constructor <init>(Lmiui/external/k;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/f;->brg:Lmiui/external/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lmiui/external/f;->brg:Lmiui/external/k;

    invoke-static {v0}, Lmiui/external/k;->bPH(Lmiui/external/k;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lmiui/external/e;

    iget-object v2, p0, Lmiui/external/f;->brg:Lmiui/external/k;

    invoke-direct {v1, v2, v0}, Lmiui/external/e;-><init>(Lmiui/external/k;Landroid/app/Dialog;)V

    iget-object v2, p0, Lmiui/external/f;->brg:Lmiui/external/k;

    invoke-virtual {v2}, Lmiui/external/k;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "SdkUpdatePromptDialog"

    invoke-virtual {v1, v2, v3}, Lmiui/external/e;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    new-instance v1, Lmiui/external/h;

    invoke-direct {v1, p0, v0}, Lmiui/external/h;-><init>(Lmiui/external/f;Landroid/app/Dialog;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lmiui/external/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
