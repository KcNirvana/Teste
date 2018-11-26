.class final Lcom/miui/appmanager/Y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aWD:Lcom/miui/appmanager/AMAppStorageDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/Y;->aWD:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/Y;->aWD:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blq(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method
