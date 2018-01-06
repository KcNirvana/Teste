.class Lcom/miui/weather2/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/structures/AqiQualityStation;

.field final synthetic b:Lcom/miui/weather2/view/AqiQualityFourthPart;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/AqiQualityFourthPart;Lcom/miui/weather2/structures/AqiQualityStation;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/c;->b:Lcom/miui/weather2/view/AqiQualityFourthPart;

    iput-object p2, p0, Lcom/miui/weather2/view/c;->a:Lcom/miui/weather2/structures/AqiQualityStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/c;->b:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->c(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/tools/n;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/c;->a:Lcom/miui/weather2/structures/AqiQualityStation;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AqiQualityStation;->getLatitude()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/c;->a:Lcom/miui/weather2/structures/AqiQualityStation;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AqiQualityStation;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/tools/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/view/c;->b:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->c(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/tools/n;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/c;->a:Lcom/miui/weather2/structures/AqiQualityStation;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/n;->a(Lcom/miui/weather2/structures/AqiQualityStation;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "aqi_detail"

    invoke-static {v1, v0}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
