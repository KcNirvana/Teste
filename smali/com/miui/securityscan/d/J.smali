.class final Lcom/miui/securityscan/d/J;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/d/J;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/d/J;->val$index:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "exit_dialog_garbage_clean"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lb(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "exit_dialog_garbage_clean_cancel"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lb(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "exit_dialog_garbage_clean_show"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lb(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "exit_dialog_scan_optimize"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lb(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "exit_dialog_scan_optimize_cancel"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lb(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "exit_dialog_scan_optimize_show"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lb(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "exit_dialog_release_storage"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lb(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "exit_dialog_release_storage_cancel"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lb(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "exit_dialog_release_storage_show"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lb(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "exit_dialog_garbage_clean_scanresult_ok"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lb(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "exit_dialog_garbage_clean_scanresult_cancel"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lb(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "exit_dialog_garbage_clean_scanresult_show"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lb(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
