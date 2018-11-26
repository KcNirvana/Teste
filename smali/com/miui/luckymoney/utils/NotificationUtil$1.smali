.class final Lcom/miui/luckymoney/utils/NotificationUtil$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/utils/NotificationUtil$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/miui/luckymoney/utils/NotificationUtil$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/utils/NotificationUtil$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/miui/luckymoney/utils/NotificationUtil$1;->val$id:I

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method
