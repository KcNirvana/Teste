.class Lmiui/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmiui/a/e;


# direct methods
.method constructor <init>(Lmiui/a/e;)V
    .locals 0

    iput-object p1, p0, Lmiui/a/g;->a:Lmiui/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lmiui/a/g;->a:Lmiui/a/e;

    invoke-static {v0}, Lmiui/a/e;->a(Lmiui/a/e;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lmiui/a/e$a;

    iget-object v2, p0, Lmiui/a/g;->a:Lmiui/a/e;

    invoke-direct {v1, v2, v0}, Lmiui/a/e$a;-><init>(Lmiui/a/e;Landroid/app/Dialog;)V

    iget-object v2, p0, Lmiui/a/g;->a:Lmiui/a/e;

    invoke-virtual {v2}, Lmiui/a/e;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "SdkUpdatePromptDialog"

    invoke-virtual {v1, v2, v3}, Lmiui/a/e$a;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    new-instance v1, Lmiui/a/h;

    invoke-direct {v1, p0, v0}, Lmiui/a/h;-><init>(Lmiui/a/g;Landroid/app/Dialog;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lmiui/a/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
