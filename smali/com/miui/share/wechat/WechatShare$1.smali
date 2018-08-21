.class Lcom/miui/share/wechat/WechatShare$1;
.super Ljava/lang/Object;
.source "WechatShare.java"

# interfaces
.implements Lcom/miui/share/ShareUtils$OnShareContentPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/share/wechat/WechatShare;->shareIntent(Landroid/app/Activity;Landroid/content/Intent;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/share/wechat/WechatShare;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$isTimeline:Z


# direct methods
.method constructor <init>(Lcom/miui/share/wechat/WechatShare;Landroid/content/Intent;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/share/wechat/WechatShare$1;->this$0:Lcom/miui/share/wechat/WechatShare;

    iput-object p2, p0, Lcom/miui/share/wechat/WechatShare$1;->val$intent:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/miui/share/wechat/WechatShare$1;->val$isTimeline:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    :cond_0
    if-eqz v4, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/share/wechat/WechatShare$1;->this$0:Lcom/miui/share/wechat/WechatShare;

    iget-object v1, p0, Lcom/miui/share/wechat/WechatShare$1;->val$intent:Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/miui/share/wechat/WechatShare$1;->val$isTimeline:Z

    invoke-static {v0, v1, v4, v2}, Lcom/miui/share/wechat/WechatShare;->access$000(Lcom/miui/share/wechat/WechatShare;Landroid/content/Intent;Landroid/graphics/Bitmap;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/miui/share/wechat/WechatShare$1;->this$0:Lcom/miui/share/wechat/WechatShare;

    iget-boolean v1, p0, Lcom/miui/share/wechat/WechatShare$1;->val$isTimeline:Z

    invoke-static {v0, p2, v1}, Lcom/miui/share/wechat/WechatShare;->access$100(Lcom/miui/share/wechat/WechatShare;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/share/wechat/WechatShare$1;->this$0:Lcom/miui/share/wechat/WechatShare;

    iget-boolean v5, p0, Lcom/miui/share/wechat/WechatShare$1;->val$isTimeline:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/share/wechat/WechatShare;->access$200(Lcom/miui/share/wechat/WechatShare;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Z

    move-result v0

    goto :goto_0
.end method
