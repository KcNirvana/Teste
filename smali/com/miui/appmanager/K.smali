.class final Lcom/miui/appmanager/K;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aWo:Lcom/miui/appmanager/ApplicationsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/K;->aWo:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/K;->aWo:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkT(Lcom/miui/appmanager/ApplicationsDetailsActivity;I)V

    return-void
.end method
