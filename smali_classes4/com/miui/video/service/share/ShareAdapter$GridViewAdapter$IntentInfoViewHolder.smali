.class Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;
.super Ljava/lang/Object;
.source "ShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntentInfoViewHolder"
.end annotation


# instance fields
.field private intentInfo:Lcom/miui/video/service/share/ShareAdapter$IntentInfo;

.field final synthetic this$1:Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;

.field private vIcon:Lcom/miui/video/common/library/widget/CircleImageView;

.field private vName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;->this$1:Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;)Lcom/miui/video/common/library/widget/CircleImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;->vIcon:Lcom/miui/video/common/library/widget/CircleImageView;

    return-object p0
.end method

.method static synthetic access$702(Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;Lcom/miui/video/common/library/widget/CircleImageView;)Lcom/miui/video/common/library/widget/CircleImageView;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;->vIcon:Lcom/miui/video/common/library/widget/CircleImageView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;->vName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;->vName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;)Lcom/miui/video/service/share/ShareAdapter$IntentInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;->intentInfo:Lcom/miui/video/service/share/ShareAdapter$IntentInfo;

    return-object p0
.end method

.method static synthetic access$902(Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;Lcom/miui/video/service/share/ShareAdapter$IntentInfo;)Lcom/miui/video/service/share/ShareAdapter$IntentInfo;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;->intentInfo:Lcom/miui/video/service/share/ShareAdapter$IntentInfo;

    return-object p1
.end method
