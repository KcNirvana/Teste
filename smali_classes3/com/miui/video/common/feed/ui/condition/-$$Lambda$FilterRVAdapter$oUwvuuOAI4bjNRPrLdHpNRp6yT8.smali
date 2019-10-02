.class public final synthetic Lcom/miui/video/common/feed/ui/condition/-$$Lambda$FilterRVAdapter$oUwvuuOAI4bjNRPrLdHpNRp6yT8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;

.field private final synthetic f$1:Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter$FilterViewHolder;

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/miui/video/common/feed/entity/TinyCardEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter$FilterViewHolder;ILcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$FilterRVAdapter$oUwvuuOAI4bjNRPrLdHpNRp6yT8;->f$0:Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$FilterRVAdapter$oUwvuuOAI4bjNRPrLdHpNRp6yT8;->f$1:Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter$FilterViewHolder;

    iput p3, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$FilterRVAdapter$oUwvuuOAI4bjNRPrLdHpNRp6yT8;->f$2:I

    iput-object p4, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$FilterRVAdapter$oUwvuuOAI4bjNRPrLdHpNRp6yT8;->f$3:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$FilterRVAdapter$oUwvuuOAI4bjNRPrLdHpNRp6yT8;->f$0:Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$FilterRVAdapter$oUwvuuOAI4bjNRPrLdHpNRp6yT8;->f$1:Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter$FilterViewHolder;

    iget v2, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$FilterRVAdapter$oUwvuuOAI4bjNRPrLdHpNRp6yT8;->f$2:I

    iget-object v3, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$FilterRVAdapter$oUwvuuOAI4bjNRPrLdHpNRp6yT8;->f$3:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;->lambda$onBindViewHolder$8(Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter$FilterViewHolder;ILcom/miui/video/common/feed/entity/TinyCardEntity;Landroid/view/View;)V

    return-void
.end method
