.class final La/ac;
.super La/ab;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public deadlineNanoTime(J)La/ab;
    .locals 0

    return-object p0
.end method

.method public throwIfReached()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)La/ab;
    .locals 0

    return-object p0
.end method
