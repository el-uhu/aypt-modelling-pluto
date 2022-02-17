### A Pluto.jl notebook ###
# v0.18.0

using Markdown
using InteractiveUtils

# ╔═╡ a11f9232-e903-42fa-9094-ee8347deeb81
using PlutoUI

# ╔═╡ 78e56283-0d27-485d-9689-29fb8518aab1
html"<button onclick=present()>Present</button>"

# ╔═╡ bdc1575c-8f09-11ec-2a75-8912fe84eefd
md"""
# Intro to Modelling
AYPT Seminar - *18.02.2022* - **Lukas Hutter**
"""

# ╔═╡ 8d7345f8-aa14-4e03-b824-a6d454b1e88f
md"""
# Things to cover:

1. What are models and how can they help us?
2. How can models best be leveraged?
3. Practical aspects:
   - Installing julia, Pluto.jl, and some other bits and bops
   - Getting familiar with the notebook
   - Loading data
   - Plotting data
   - Running simple simulations
   - Fitting simulations to data
   - Models based on differential equations *(advanced)*
"""

# ╔═╡ 00870001-8482-4582-88c8-ba7893a60ecd
md"""
# 01 - What is a Model?

- We model all the time! We use **mental models** to perceive the world around us and predict the consequences of our actions.
- Models...
  - are **simplified (constrained) representations** of something more complicated
  - allow us to **reason about, communicate and explain** patterns of **cause and effect** that underlie a phenomenon
  - enable use to **predict and explore possible futures and hypothetical scenarios**
  - we use them all the time to **plan our actions or design solutions to problems**, but are rarely aware of it $\rightarrow$ **mental models**
"""

# ╔═╡ f8fd9a09-8470-4d59-9ba1-6f6a8329364b
md"""
# Different types of models (non-exhaustive list)

- **qualitative** (make predictions that answer a "how?" question)
  - mental model
  - verbally expressed *"If `THIS` then `THAT`"*
- **quantitative** (make predictions that answer a "how much?" question)
  - mathematical (expressed in mathematics)
    - statistical (e.g. the normal distribution: $\Phi(x)= \frac{1}{\sqrt{2\pi\sigma}}e^{\frac{(x-\mu)^2}{2\sigma^2}}$)
    - simple mathematical formulae (e.g. exponential decay: $x(t) = x_0 \cdot e^{-rt}$)
    - complicated mathematical models (e.g. systems of differential equations)
  - computer-simulation-based (expressed as code more generally)
    - agent-based models (e.g. ant colony, traffic simulation,...)
"""

# ╔═╡ 2784321a-29b0-4c3d-b6b9-5440b39b79ac
md"""
# Modelling Caveats

- **All models break eventually**
  > *"All models are wrong, but some are useful"* - G.E.P. Box
  
- **Overcomplicated models lose usefulness**
  >  *"A model is to be as simple as possible, but no simpler"* - A. Einstein
"""

# ╔═╡ 1cdd64d1-d1a0-438e-be16-79a2cd0437fb
md"""
# Experiment and Model Form A Feedback Loop

> *"In general, we look for a new law by the following process: First we guess it,; then we compute the consequences of the guess to see what would be implied if this law that we guessed is right; then we compare the result of the computation with nature, with experiment or experience [obersvation of the world], compare it directly with observation, to see if it works. If it disagrees with experiment, it is wrong."* - R. Feynman
"""

# ╔═╡ 01cb735a-179a-4d7b-a69c-be05e10d703f
md"""
# Practical Part

**Prerequisites**
1. a working installation of the julia language, along with a few packages
2. a copy of this [**github repository**](), containing the prepared notebooks, as well as some sample data
"""

# ╔═╡ f51137c6-5321-49e8-ad9d-325596e9aeec
md"""
# 1. Get the notebooks and sample data

1. Go to [**github repository**]()
2. Download the repository as zip-folder (`Code > Download as ZIP`), move it to your desired destination and unzip it.
"""

# ╔═╡ 931f5a0a-be29-4b8e-945b-23c919ca2253
md"""
# 2. Installing Julia & Pluto

Go to [https://julialang.org/downloads](https://julialang.org/downloads) and get the installer for your specific platform (most likely windows), and follow the installation instructions.

Once the installation is finished, **start a julia command prompt** (called *REPL* in julia-speak), it should greet you with the prompt
```julia
julia>
```

Press `]` to **launch the julia package manager**. This changes the prompt to
```julia
(@v1.7) pkg>
```

Install the three required packages `Pluto, PlutoUI, Plots` - this will take a while, but only has to be done once!
```julia
add Pluto, PlutoUI, Plots
```
   
Press `Backspace` to get back to the regular command prompt (`julia>`)
"""

# ╔═╡ 25ff9c36-3466-433f-9048-615bbbb9124c
md"""
# 3. Launch the Notebooks

Once the installation has finished, navigate to the location where you unzipped the folder using
```julia
	cd("path/to/file")
```
In my case, I've saved the documents under `"C:\\Users\\lukih\\Documents\code\\202202-aypt-modelling-intro\\"` - you can use the `Tab` key to autocomplete the filenames

Check, if you're in the correct folder using the "print-working-directory"-command
```julia
	pwd()
```

Tell julia that you want to use the Pluto package via the command
```julia
		using Pluto
```

Start a Pluto instance
```julia
	Pluto.run()
```
This will take a bit of time and open up a new browser window/tab, where you'll be able to access the notebooks
"""

# ╔═╡ 9b5a0791-39d1-402d-a023-f408f1815d0a
md"""
# 4. Things to do next

- **(Optional:)**Check out the great [sample notebooks](./sample) to familiarise yourself with pluto
- Open the notbook called[`02_loading-plotting-fitting.jl`](./open?path=02_loading-plotting-fitting.jl) to take the tutorial that will teach you to
  1. Load your data into a notebook
  2. Visualise it using plots
  3. Fit a mathematical function to your data
"""

# ╔═╡ c70be256-2b9c-4b43-b64f-c37491d2cb87
md"""
> This presentation is a Pluto notebook in its own right, if you want to revisit it an any point in time, you can find it under `01_into.jl`
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.34"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
git-tree-sha1 = "2b078b5a615c6c0396c77810d92ee8c6f470d238"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.3"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "13468f237353112a01b2d6b32f3d0f80219944aa"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.2"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "8979e9802b4ac3d58c503a20f2824ad67f9074dd"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.34"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╟─a11f9232-e903-42fa-9094-ee8347deeb81
# ╟─78e56283-0d27-485d-9689-29fb8518aab1
# ╟─bdc1575c-8f09-11ec-2a75-8912fe84eefd
# ╟─8d7345f8-aa14-4e03-b824-a6d454b1e88f
# ╟─00870001-8482-4582-88c8-ba7893a60ecd
# ╟─f8fd9a09-8470-4d59-9ba1-6f6a8329364b
# ╟─2784321a-29b0-4c3d-b6b9-5440b39b79ac
# ╟─1cdd64d1-d1a0-438e-be16-79a2cd0437fb
# ╟─01cb735a-179a-4d7b-a69c-be05e10d703f
# ╟─f51137c6-5321-49e8-ad9d-325596e9aeec
# ╟─931f5a0a-be29-4b8e-945b-23c919ca2253
# ╟─25ff9c36-3466-433f-9048-615bbbb9124c
# ╟─9b5a0791-39d1-402d-a023-f408f1815d0a
# ╟─c70be256-2b9c-4b43-b64f-c37491d2cb87
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
