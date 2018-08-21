.class Lcom/miui/home/launcher/assistant/express/ExpressCardView$2;
.super Ljava/lang/Object;
.source "ExpressCardView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/express/ExpressCardView;->filterExpressList(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/express/ExpressCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/express/ExpressCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView$2;->this$0:Lcom/miui/home/launcher/assistant/express/ExpressCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/personalassistant/express/bean/ExpressEntry;Lcom/miui/personalassistant/express/bean/ExpressEntry;)I
    .locals 5

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getLatestTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getLatestTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    check-cast p2, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/express/ExpressCardView$2;->compare(Lcom/miui/personalassistant/express/bean/ExpressEntry;Lcom/miui/personalassistant/express/bean/ExpressEntry;)I

    move-result v0

    return v0
.end method
