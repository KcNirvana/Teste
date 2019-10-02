.class Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$2;
.super Ljava/lang/Object;
.source "InlineManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->startInternal(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object p1

    const-string v0, "volumn_switch"

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$500(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v1

    const-string v2, "volumn_switch"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$600(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;->requestAudioFocus(ZLandroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$700(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_inline_volumn_open:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$200(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setVolume(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$700(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_inline_volumn_close:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$200(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setVolume(F)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$600(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;->requestAudioFocus(ZLandroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :goto_0
    return-void
.end method
