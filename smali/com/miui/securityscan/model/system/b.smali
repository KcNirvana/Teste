.class final Lcom/miui/securityscan/model/system/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Bc:Lcom/miui/securityscan/model/system/a;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/model/system/a;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/system/b;->Bc:Lcom/miui/securityscan/model/system/a;

    iput-object p2, p0, Lcom/miui/securityscan/model/system/b;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/system/b;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/common/b/e;->aHN(Landroid/content/Context;)V

    return-void
.end method
