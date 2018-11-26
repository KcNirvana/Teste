.class final Lcom/miui/appmanager/O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic aWs:Lcom/miui/appmanager/ApplicationsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/O;->aWs:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/O;->aWs:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjT(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/appmanager/O;->aWs:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0, p3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkJ(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/appmanager/O;->aWs:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0, p3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkK(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    goto :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/appmanager/O;->aWs:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0, p3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkM(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/appmanager/O;->aWs:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0, p3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkJ(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/appmanager/O;->aWs:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0, p3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkK(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
