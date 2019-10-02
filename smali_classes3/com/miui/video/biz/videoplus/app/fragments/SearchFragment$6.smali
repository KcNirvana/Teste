.class Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$6;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 2

    sget-object p2, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$7;->$SwitchMap$com$miui$video$biz$videoplus$db$core$loader$SyncMediaService$Type:[I

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    const-string p2, "KEY_SEARCH_KEY_NOW"

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->access$300(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
