package io.lindstrom.m3u8.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import javax.annotation.Generated;

/**
 * Builds instances of type {@link IFrameVariant IFrameVariant}.
 * Initialize attributes and then invoke the {@link #build()} method to create an
 * immutable instance.
 * <p><em>{@code IFrameVariantBuilder} is not thread-safe and generally should not be stored in a field or collection,
 * but instead used immediately to create instances.</em>
 */
@SuppressWarnings({"all"})
@Generated({"Immutables.generator", "IFrameVariant"})
class IFrameVariantBuilder {
  private static final long INIT_BIT_URI = 0x1L;
  private static final long INIT_BIT_BANDWIDTH = 0x2L;
  private long initBits = 0x3L;

  private String uri;
  private long bandwidth;
  private Long averageBandwidth;
  private List<String> codecs = new ArrayList<String>();
  private Resolution resolution;
  private String hdcpLevel;
  private String video;
  private Integer programId;

  /**
   * Creates a builder for {@link IFrameVariant IFrameVariant} instances.
   */
  IFrameVariantBuilder() {
    if (!(this instanceof IFrameVariant.Builder)) {
      throw new UnsupportedOperationException("Use: new IFrameVariant.Builder()");
    }
  }

  /**
   * Fill a builder with attribute values from the provided {@code IFrameVariant} instance.
   * Regular attribute values will be replaced with those from the given instance.
   * Absent optional values will not replace present values.
   * Collection elements and entries will be added, not replaced.
   * @param instance The instance from which to copy values
   * @return {@code this} builder for use in a chained invocation
   */
  public final IFrameVariant.Builder from(IFrameVariant instance) {
    Objects.requireNonNull(instance, "instance");
    uri(instance.uri());
    bandwidth(instance.bandwidth());
    Optional<Long> averageBandwidthOptional = instance.averageBandwidth();
    if (averageBandwidthOptional.isPresent()) {
      averageBandwidth(averageBandwidthOptional);
    }
    addAllCodecs(instance.codecs());
    Optional<Resolution> resolutionOptional = instance.resolution();
    if (resolutionOptional.isPresent()) {
      resolution(resolutionOptional);
    }
    Optional<String> hdcpLevelOptional = instance.hdcpLevel();
    if (hdcpLevelOptional.isPresent()) {
      hdcpLevel(hdcpLevelOptional);
    }
    Optional<String> videoOptional = instance.video();
    if (videoOptional.isPresent()) {
      video(videoOptional);
    }
    Optional<Integer> programIdOptional = instance.programId();
    if (programIdOptional.isPresent()) {
      programId(programIdOptional);
    }
    return (IFrameVariant.Builder) this;
  }

  /**
   * Initializes the value for the {@link IFrameVariant#uri() uri} attribute.
   * @param uri The value for uri 
   * @return {@code this} builder for use in a chained invocation
   */
  public final IFrameVariant.Builder uri(String uri) {
    this.uri = Objects.requireNonNull(uri, "uri");
    initBits &= ~INIT_BIT_URI;
    return (IFrameVariant.Builder) this;
  }

  /**
   * Initializes the value for the {@link IFrameVariant#bandwidth() bandwidth} attribute.
   * @param bandwidth The value for bandwidth 
   * @return {@code this} builder for use in a chained invocation
   */
  public final IFrameVariant.Builder bandwidth(long bandwidth) {
    this.bandwidth = bandwidth;
    initBits &= ~INIT_BIT_BANDWIDTH;
    return (IFrameVariant.Builder) this;
  }

  /**
   * Initializes the optional value {@link IFrameVariant#averageBandwidth() averageBandwidth} to averageBandwidth.
   * @param averageBandwidth The value for averageBandwidth
   * @return {@code this} builder for chained invocation
   */
  public final IFrameVariant.Builder averageBandwidth(long averageBandwidth) {
    this.averageBandwidth = averageBandwidth;
    return (IFrameVariant.Builder) this;
  }

  /**
   * Initializes the optional value {@link IFrameVariant#averageBandwidth() averageBandwidth} to averageBandwidth.
   * @param averageBandwidth The value for averageBandwidth
   * @return {@code this} builder for use in a chained invocation
   */
  public final IFrameVariant.Builder averageBandwidth(Optional<Long> averageBandwidth) {
    this.averageBandwidth = averageBandwidth.orElse(null);
    return (IFrameVariant.Builder) this;
  }

  /**
   * Adds one element to {@link IFrameVariant#codecs() codecs} list.
   * @param element A codecs element
   * @return {@code this} builder for use in a chained invocation
   */
  public final IFrameVariant.Builder addCodecs(String element) {
    this.codecs.add(Objects.requireNonNull(element, "codecs element"));
    return (IFrameVariant.Builder) this;
  }

  /**
   * Adds elements to {@link IFrameVariant#codecs() codecs} list.
   * @param elements An array of codecs elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final IFrameVariant.Builder addCodecs(String... elements) {
    for (String element : elements) {
      this.codecs.add(Objects.requireNonNull(element, "codecs element"));
    }
    return (IFrameVariant.Builder) this;
  }

  /**
   * Sets or replaces all elements for {@link IFrameVariant#codecs() codecs} list.
   * @param elements An iterable of codecs elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final IFrameVariant.Builder codecs(Iterable<String> elements) {
    this.codecs.clear();
    return addAllCodecs(elements);
  }

  /**
   * Adds elements to {@link IFrameVariant#codecs() codecs} list.
   * @param elements An iterable of codecs elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final IFrameVariant.Builder addAllCodecs(Iterable<String> elements) {
    for (String element : elements) {
      this.codecs.add(Objects.requireNonNull(element, "codecs element"));
    }
    return (IFrameVariant.Builder) this;
  }

  /**
   * Initializes the optional value {@link IFrameVariant#resolution() resolution} to resolution.
   * @param resolution The value for resolution
   * @return {@code this} builder for chained invocation
   */
  public final IFrameVariant.Builder resolution(Resolution resolution) {
    this.resolution = Objects.requireNonNull(resolution, "resolution");
    return (IFrameVariant.Builder) this;
  }

  /**
   * Initializes the optional value {@link IFrameVariant#resolution() resolution} to resolution.
   * @param resolution The value for resolution
   * @return {@code this} builder for use in a chained invocation
   */
  public final IFrameVariant.Builder resolution(Optional<? extends Resolution> resolution) {
    this.resolution = resolution.orElse(null);
    return (IFrameVariant.Builder) this;
  }

  /**
   * Initializes the optional value {@link IFrameVariant#hdcpLevel() hdcpLevel} to hdcpLevel.
   * @param hdcpLevel The value for hdcpLevel
   * @return {@code this} builder for chained invocation
   */
  public final IFrameVariant.Builder hdcpLevel(String hdcpLevel) {
    this.hdcpLevel = Objects.requireNonNull(hdcpLevel, "hdcpLevel");
    return (IFrameVariant.Builder) this;
  }

  /**
   * Initializes the optional value {@link IFrameVariant#hdcpLevel() hdcpLevel} to hdcpLevel.
   * @param hdcpLevel The value for hdcpLevel
   * @return {@code this} builder for use in a chained invocation
   */
  public final IFrameVariant.Builder hdcpLevel(Optional<String> hdcpLevel) {
    this.hdcpLevel = hdcpLevel.orElse(null);
    return (IFrameVariant.Builder) this;
  }

  /**
   * Initializes the optional value {@link IFrameVariant#video() video} to video.
   * @param video The value for video
   * @return {@code this} builder for chained invocation
   */
  public final IFrameVariant.Builder video(String video) {
    this.video = Objects.requireNonNull(video, "video");
    return (IFrameVariant.Builder) this;
  }

  /**
   * Initializes the optional value {@link IFrameVariant#video() video} to video.
   * @param video The value for video
   * @return {@code this} builder for use in a chained invocation
   */
  public final IFrameVariant.Builder video(Optional<String> video) {
    this.video = video.orElse(null);
    return (IFrameVariant.Builder) this;
  }

  /**
   * Initializes the optional value {@link IFrameVariant#programId() programId} to programId.
   * @param programId The value for programId
   * @return {@code this} builder for chained invocation
   */
  public final IFrameVariant.Builder programId(int programId) {
    this.programId = programId;
    return (IFrameVariant.Builder) this;
  }

  /**
   * Initializes the optional value {@link IFrameVariant#programId() programId} to programId.
   * @param programId The value for programId
   * @return {@code this} builder for use in a chained invocation
   */
  public final IFrameVariant.Builder programId(Optional<Integer> programId) {
    this.programId = programId.orElse(null);
    return (IFrameVariant.Builder) this;
  }

  /**
   * Builds a new {@link IFrameVariant IFrameVariant}.
   * @return An immutable instance of IFrameVariant
   * @throws java.lang.IllegalStateException if any required attributes are missing
   */
  public IFrameVariant build() {
    if (initBits != 0) {
      throw new IllegalStateException(formatRequiredAttributesMessage());
    }
    return new IFrameVariantBuilder.ImmutableIFrameVariant(this);
  }

  private String formatRequiredAttributesMessage() {
    List<String> attributes = new ArrayList<String>();
    if ((initBits & INIT_BIT_URI) != 0) attributes.add("uri");
    if ((initBits & INIT_BIT_BANDWIDTH) != 0) attributes.add("bandwidth");
    return "Cannot build IFrameVariant, some of required attributes are not set " + attributes;
  }

  /**
   * Immutable implementation of {@link IFrameVariant}.
   * <p>
   * Use the builder to create immutable instances:
   * {@code new IFrameVariant.Builder()}.
   */
  private static final class ImmutableIFrameVariant implements IFrameVariant {
    private final String uri;
    private final long bandwidth;
    private final Long averageBandwidth;
    private final List<String> codecs;
    private final Resolution resolution;
    private final String hdcpLevel;
    private final String video;
    private final Integer programId;

    private ImmutableIFrameVariant(IFrameVariantBuilder builder) {
      this.uri = builder.uri;
      this.bandwidth = builder.bandwidth;
      this.averageBandwidth = builder.averageBandwidth;
      this.codecs = createUnmodifiableList(true, builder.codecs);
      this.resolution = builder.resolution;
      this.hdcpLevel = builder.hdcpLevel;
      this.video = builder.video;
      this.programId = builder.programId;
    }

    /**
     * @return The value of the {@code uri} attribute
     */
    @Override
    public String uri() {
      return uri;
    }

    /**
     * @return The value of the {@code bandwidth} attribute
     */
    @Override
    public long bandwidth() {
      return bandwidth;
    }

    /**
     * @return The value of the {@code averageBandwidth} attribute
     */
    @Override
    public Optional<Long> averageBandwidth() {
      return Optional.ofNullable(averageBandwidth);
    }

    /**
     * @return The value of the {@code codecs} attribute
     */
    @Override
    public List<String> codecs() {
      return codecs;
    }

    /**
     * @return The value of the {@code resolution} attribute
     */
    @Override
    public Optional<Resolution> resolution() {
      return Optional.ofNullable(resolution);
    }

    /**
     * @return The value of the {@code hdcpLevel} attribute
     */
    @Override
    public Optional<String> hdcpLevel() {
      return Optional.ofNullable(hdcpLevel);
    }

    /**
     * @return The value of the {@code video} attribute
     */
    @Override
    public Optional<String> video() {
      return Optional.ofNullable(video);
    }

    /**
     * @return The value of the {@code programId} attribute
     */
    @Override
    public Optional<Integer> programId() {
      return Optional.ofNullable(programId);
    }

    /**
     * This instance is equal to all instances of {@code ImmutableIFrameVariant} that have equal attribute values.
     * @return {@code true} if {@code this} is equal to {@code another} instance
     */
    @Override
    public boolean equals(Object another) {
      if (this == another) return true;
      return another instanceof IFrameVariantBuilder.ImmutableIFrameVariant
          && equalTo((IFrameVariantBuilder.ImmutableIFrameVariant) another);
    }

    private boolean equalTo(IFrameVariantBuilder.ImmutableIFrameVariant another) {
      return uri.equals(another.uri)
          && bandwidth == another.bandwidth
          && Objects.equals(averageBandwidth, another.averageBandwidth)
          && codecs.equals(another.codecs)
          && Objects.equals(resolution, another.resolution)
          && Objects.equals(hdcpLevel, another.hdcpLevel)
          && Objects.equals(video, another.video)
          && Objects.equals(programId, another.programId);
    }

    /**
     * Computes a hash code from attributes: {@code uri}, {@code bandwidth}, {@code averageBandwidth}, {@code codecs}, {@code resolution}, {@code hdcpLevel}, {@code video}, {@code programId}.
     * @return hashCode value
     */
    @Override
    public int hashCode() {
      int h = 5381;
      h += (h << 5) + uri.hashCode();
      h += (h << 5) + Long.hashCode(bandwidth);
      h += (h << 5) + Objects.hashCode(averageBandwidth);
      h += (h << 5) + codecs.hashCode();
      h += (h << 5) + Objects.hashCode(resolution);
      h += (h << 5) + Objects.hashCode(hdcpLevel);
      h += (h << 5) + Objects.hashCode(video);
      h += (h << 5) + Objects.hashCode(programId);
      return h;
    }

    /**
     * Prints the immutable value {@code IFrameVariant} with attribute values.
     * @return A string representation of the value
     */
    @Override
    public String toString() {
      StringBuilder builder = new StringBuilder("IFrameVariant{");
      builder.append("uri=").append(uri);
      builder.append(", ");
      builder.append("bandwidth=").append(bandwidth);
      if (averageBandwidth != null) {
        builder.append(", ");
        builder.append("averageBandwidth=").append(averageBandwidth);
      }
      builder.append(", ");
      builder.append("codecs=").append(codecs);
      if (resolution != null) {
        builder.append(", ");
        builder.append("resolution=").append(resolution);
      }
      if (hdcpLevel != null) {
        builder.append(", ");
        builder.append("hdcpLevel=").append(hdcpLevel);
      }
      if (video != null) {
        builder.append(", ");
        builder.append("video=").append(video);
      }
      if (programId != null) {
        builder.append(", ");
        builder.append("programId=").append(programId);
      }
      return builder.append("}").toString();
    }
  }

  private static <T> List<T> createSafeList(Iterable<? extends T> iterable, boolean checkNulls, boolean skipNulls) {
    ArrayList<T> list;
    if (iterable instanceof Collection<?>) {
      int size = ((Collection<?>) iterable).size();
      if (size == 0) return Collections.emptyList();
      list = new ArrayList<T>();
    } else {
      list = new ArrayList<T>();
    }
    for (T element : iterable) {
      if (skipNulls && element == null) continue;
      if (checkNulls) Objects.requireNonNull(element, "element");
      list.add(element);
    }
    return list;
  }

  private static <T> List<T> createUnmodifiableList(boolean clone, List<T> list) {
    switch(list.size()) {
    case 0: return Collections.emptyList();
    case 1: return Collections.singletonList(list.get(0));
    default:
      if (clone) {
        return Collections.unmodifiableList(new ArrayList<T>(list));
      } else {
        if (list instanceof ArrayList<?>) {
          ((ArrayList<?>) list).trimToSize();
        }
        return Collections.unmodifiableList(list);
      }
    }
  }
}
