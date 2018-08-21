.class final Lcom/miui/share/ShareUtils$2;
.super Ljava/lang/Object;
.source "ShareUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/share/ShareUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$duration:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/share/ShareUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/share/ShareUtils$2;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/miui/share/ShareUtils$2;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/miui/share/ShareUtils;->access$200()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/share/ShareUtils;->access$200()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/share/ShareUtils$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/share/ShareUtils$2;->val$text:Ljava/lang/String;

    iget v2, p0, Lcom/miui/share/ShareUtils$2;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/share/ShareUtils;->access$202(Landroid/widget/Toast;)Landroid/widget/Toast;

    invoke-static {}, Lcom/miui/share/ShareUtils;->access$200()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
