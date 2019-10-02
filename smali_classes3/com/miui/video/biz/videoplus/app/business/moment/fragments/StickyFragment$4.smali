.class Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$4;
.super Ljava/lang/Object;
.source "StickyFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->clear()V

    :cond_0
    sget-object p2, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$7;->$SwitchMap$com$miui$video$biz$videoplus$db$core$loader$SyncMediaService$Type:[I

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->access$602(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;Z)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->access$500(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V

    :goto_0
    return-void
.end method
