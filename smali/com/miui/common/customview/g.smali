.class final Lcom/miui/common/customview/g;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic azg:Lcom/miui/common/customview/ScoreTextView;


# direct methods
.method constructor <init>(Lcom/miui/common/customview/ScoreTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/g;->azg:Lcom/miui/common/customview/ScoreTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/common/customview/g;->azg:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/common/customview/g;->azg:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {v4}, Lcom/miui/common/customview/ScoreTextView;->aGo(Lcom/miui/common/customview/ScoreTextView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/common/customview/ScoreTextView;->aGp(Lcom/miui/common/customview/ScoreTextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/common/customview/g;->azg:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/common/customview/g;->azg:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {v4}, Lcom/miui/common/customview/ScoreTextView;->aGo(Lcom/miui/common/customview/ScoreTextView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/common/customview/ScoreTextView;->aGp(Lcom/miui/common/customview/ScoreTextView;Ljava/lang/CharSequence;)V

    return-void
.end method
