.class Lcom/miui/weather2/view/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/WeatherDynamicListView;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/miui/weather2/view/am;->b:I

    iput v0, p0, Lcom/miui/weather2/view/am;->c:I

    return-void
.end method

.method private c()V
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/am;->e:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/view/am;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$1000(Lcom/miui/weather2/view/WeatherDynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$600(Lcom/miui/weather2/view/WeatherDynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$1100(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$1200(Lcom/miui/weather2/view/WeatherDynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$1300(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget v0, p0, Lcom/miui/weather2/view/am;->d:I

    iget v1, p0, Lcom/miui/weather2/view/am;->b:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$1000(Lcom/miui/weather2/view/WeatherDynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$000(Lcom/miui/weather2/view/WeatherDynamicListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    iget-object v1, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$000(Lcom/miui/weather2/view/WeatherDynamicListView;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$1400(Lcom/miui/weather2/view/WeatherDynamicListView;J)V

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$1500(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    iget v0, p0, Lcom/miui/weather2/view/am;->d:I

    iget v1, p0, Lcom/miui/weather2/view/am;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/view/am;->b:I

    iget v2, p0, Lcom/miui/weather2/view/am;->c:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$1000(Lcom/miui/weather2/view/WeatherDynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$000(Lcom/miui/weather2/view/WeatherDynamicListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    iget-object v1, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$000(Lcom/miui/weather2/view/WeatherDynamicListView;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$1400(Lcom/miui/weather2/view/WeatherDynamicListView;J)V

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$1500(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$800(Lcom/miui/weather2/view/WeatherDynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$800(Lcom/miui/weather2/view/WeatherDynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    iput p2, p0, Lcom/miui/weather2/view/am;->d:I

    iput p3, p0, Lcom/miui/weather2/view/am;->e:I

    iget v0, p0, Lcom/miui/weather2/view/am;->b:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/miui/weather2/view/am;->d:I

    :goto_0
    iput v0, p0, Lcom/miui/weather2/view/am;->b:I

    iget v0, p0, Lcom/miui/weather2/view/am;->c:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/miui/weather2/view/am;->e:I

    :goto_1
    iput v0, p0, Lcom/miui/weather2/view/am;->c:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/am;->a()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/am;->b()V

    iget v0, p0, Lcom/miui/weather2/view/am;->d:I

    iput v0, p0, Lcom/miui/weather2/view/am;->b:I

    iget v0, p0, Lcom/miui/weather2/view/am;->e:I

    iput v0, p0, Lcom/miui/weather2/view/am;->c:I

    return-void

    :cond_1
    iget v0, p0, Lcom/miui/weather2/view/am;->b:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/miui/weather2/view/am;->c:I

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$800(Lcom/miui/weather2/view/WeatherDynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$800(Lcom/miui/weather2/view/WeatherDynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    iput p2, p0, Lcom/miui/weather2/view/am;->f:I

    iget-object v0, p0, Lcom/miui/weather2/view/am;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0, p2}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$902(Lcom/miui/weather2/view/WeatherDynamicListView;I)I

    invoke-direct {p0}, Lcom/miui/weather2/view/am;->c()V

    return-void
.end method
