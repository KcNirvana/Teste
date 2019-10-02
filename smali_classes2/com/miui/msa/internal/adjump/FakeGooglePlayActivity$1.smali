.class Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$1;
.super Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;
.source "FakeGooglePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$1;->this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;

    invoke-direct {p0, p2, p3}, Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$1;->this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$1;->this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;

    invoke-virtual {v1}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$1;->this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;

    invoke-static {v2}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->access$000(Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;)Lcom/miui/msa/internal/adjump/AdInfoBean;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$1;->this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;

    invoke-static {v3}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->access$100(Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;)Lcom/miui/msa/internal/adjump/JumpControlInfo;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->access$200(Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$1;->this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;

    invoke-virtual {v0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->finish()V

    return-void
.end method
