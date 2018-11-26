.class final Lcom/miui/activityutil/ac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/activityutil/ab;

.field private final synthetic b:Lcom/miui/activityutil/ae;


# direct methods
.method constructor <init>(Lcom/miui/activityutil/ab;Lcom/miui/activityutil/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/activityutil/ac;->a:Lcom/miui/activityutil/ab;

    iput-object p2, p0, Lcom/miui/activityutil/ac;->b:Lcom/miui/activityutil/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/activityutil/ac;->b:Lcom/miui/activityutil/ae;

    iget-object v1, p0, Lcom/miui/activityutil/ac;->b:Lcom/miui/activityutil/ae;

    iget v1, v1, Lcom/miui/activityutil/ae;->b:I

    iget-object v2, p0, Lcom/miui/activityutil/ac;->b:Lcom/miui/activityutil/ae;

    iget v2, v2, Lcom/miui/activityutil/ae;->c:I

    iget-object v3, p0, Lcom/miui/activityutil/ac;->b:Lcom/miui/activityutil/ae;

    iget-boolean v3, v3, Lcom/miui/activityutil/ae;->d:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/activityutil/ae;->a(IIZ)V

    return-void
.end method
