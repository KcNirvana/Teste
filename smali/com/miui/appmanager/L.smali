.class final Lcom/miui/appmanager/L;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aWp:Lcom/miui/appmanager/ApplicationsDetailsActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/L;->aWp:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iput p2, p0, Lcom/miui/appmanager/L;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/appmanager/L;->aWp:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v2, p0, Lcom/miui/appmanager/L;->aWp:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bka(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/appmanager/L;->aWp:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkn(Lcom/miui/appmanager/ApplicationsDetailsActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bld(Lcom/miui/appmanager/ApplicationsDetailsActivity;Ljava/lang/String;I)V

    iget v1, p0, Lcom/miui/appmanager/L;->val$id:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/appmanager/L;->aWp:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bka(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/a/a;->bhW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "update_app"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "uninstall_app"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
