.class public Lcom/facebook/ads/internal/adapters/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/facebook/ads/internal/adapters/AdAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/internal/adapters/AdAdapter;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/adapters/d;->a:Lcom/facebook/ads/internal/adapters/AdAdapter;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/facebook/ads/internal/adapters/d;->a:Lcom/facebook/ads/internal/adapters/AdAdapter;

    return-object p1

    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/adapters/d$1;->a:[I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    new-instance p1, Lcom/facebook/ads/internal/adapters/k;

    invoke-direct {p1}, Lcom/facebook/ads/internal/adapters/k;-><init>()V

    return-object p1

    :pswitch_1
    new-instance p1, Lcom/facebook/ads/internal/adapters/f;

    invoke-direct {p1}, Lcom/facebook/ads/internal/adapters/f;-><init>()V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/facebook/ads/internal/adapters/j;

    invoke-direct {p1}, Lcom/facebook/ads/internal/adapters/j;-><init>()V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/facebook/ads/internal/adapters/i;

    invoke-direct {p1}, Lcom/facebook/ads/internal/adapters/i;-><init>()V

    return-object p1

    :pswitch_4
    new-instance p1, Lcom/facebook/ads/internal/adapters/g;

    invoke-direct {p1}, Lcom/facebook/ads/internal/adapters/g;-><init>()V

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/facebook/ads/internal/adapters/e;

    invoke-direct {p1}, Lcom/facebook/ads/internal/adapters/e;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
