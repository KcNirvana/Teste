.class Lcom/miui/share/weibo/WeiboShareActivity$2;
.super Ljava/lang/Object;
.source "WeiboShareActivity.java"

# interfaces
.implements Lcom/miui/share/ShareUtils$OnShareContentPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/share/weibo/WeiboShareActivity;->share(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/share/weibo/WeiboShareActivity;


# direct methods
.method constructor <init>(Lcom/miui/share/weibo/WeiboShareActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/share/weibo/WeiboShareActivity$2;->this$0:Lcom/miui/share/weibo/WeiboShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3
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

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_0
    iget-object v1, p0, Lcom/miui/share/weibo/WeiboShareActivity$2;->this$0:Lcom/miui/share/weibo/WeiboShareActivity;

    invoke-static {v1}, Lcom/miui/share/weibo/WeiboShareActivity;->access$100(Lcom/miui/share/weibo/WeiboShareActivity;)Lcom/miui/share/weibo/WeiboShare;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/share/weibo/WeiboShareActivity$2;->this$0:Lcom/miui/share/weibo/WeiboShareActivity;

    invoke-virtual {v1, v2, p2, v0}, Lcom/miui/share/weibo/WeiboShare;->share(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v1

    return v1
.end method
