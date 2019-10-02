.class Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$OnIntentSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntentSelected(Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$000(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$100(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string p1, "ShareFragment"

    const-string v0, "already preparing for a pending intent, skip this"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-static {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$102(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$202(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$200(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaomi.channel.share.ui.SystemShareActivity"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$200(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.baidu.netdisk.ui.ReceiveShareFileActivity"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$200(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.baidu.netdisk.p2pshare.ui.ReceiverP2PShareFileActivity"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$200(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.miui.bugreport.ui.FeedbackActivity"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge p1, v1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$000(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_5

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$000(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-static {v3}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$300(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$400(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShareFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOnIntentSelectedListener share url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.miui.localvideoplayer.shareprovider"

    invoke-static {v1, v2, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$100(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$100(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$100(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$100(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-static {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->access$102(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;Landroid/content/Intent;)Landroid/content/Intent;

    return-void

    :cond_6
    :goto_2
    return-void
.end method
