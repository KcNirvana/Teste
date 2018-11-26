.class final Lcom/miui/securityscan/model/manualitem/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic AS:Lcom/miui/securityscan/model/manualitem/CleanerDbUpdateModel;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/model/manualitem/CleanerDbUpdateModel;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/o;->AS:Lcom/miui/securityscan/model/manualitem/CleanerDbUpdateModel;

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/o;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/o;->val$activity:Landroid/app/Activity;

    const v1, 0x7f0706e4

    invoke-static {v0, v1}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V

    return-void
.end method
