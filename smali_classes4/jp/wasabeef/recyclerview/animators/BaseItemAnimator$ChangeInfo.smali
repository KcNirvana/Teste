.class Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;
.super Ljava/lang/Object;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field public oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p2, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iput p3, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;->fromX:I

    iput p4, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;->fromY:I

    iput p5, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;->toX:I

    iput p6, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;->toY:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILjp/wasabeef/recyclerview/animators/BaseItemAnimator$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeInfo{oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;->fromX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;->fromY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;->toX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;->toY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
